.class public Lcom/instabug/featuresrequest/ui/a/b;
.super Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;
.source "AddCommentFragment.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/a/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment<",
        "Lcom/instabug/featuresrequest/ui/a/c;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/a/a;"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/featuresrequest/ui/a/c;

.field private b:J

.field private c:Lcom/google/android/material/textfield/TextInputLayout;

.field private d:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/google/android/material/textfield/TextInputEditText;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/google/android/material/textfield/TextInputEditText;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/google/android/material/textfield/TextInputEditText;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Landroid/app/ProgressDialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;-><init>()V

    return-void
.end method

.method private I()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->f:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/a/b;->i:Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->f:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/a/b;->i:Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/instabug/featuresrequest/R$string;->feature_request_str_add_comment_comment_empty:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-direct {p0, v2, v0, v3, v4}, Lcom/instabug/featuresrequest/ui/a/b;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/a/b;->i:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/instabug/featuresrequest/ui/a/b;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private J()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->e:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->e:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/a/b;->k:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/instabug/featuresrequest/ui/a/b;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    return v2

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->e:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/a/b;->k:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/instabug/featuresrequest/R$string;->feature_request_str_add_comment_valid_email:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-direct {p0, v2, v0, v3, v4}, Lcom/instabug/featuresrequest/ui/a/b;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    :cond_3
    :goto_1
    return v1
.end method

.method public static a(J)Lcom/instabug/featuresrequest/ui/a/b;
    .locals 3
    .param p0    # J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lcom/instabug/featuresrequest/ui/a/b;

    invoke-direct {v0}, Lcom/instabug/featuresrequest/ui/a/b;-><init>()V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "featureId"

    .line 6
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/instabug/featuresrequest/ui/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->a:Lcom/instabug/featuresrequest/ui/a/c;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/a/b;Ljava/lang/Boolean;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/a/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/a/b;ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instabug/featuresrequest/ui/a/b;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->n:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 36
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->n:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 40
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 20
    invoke-virtual {p2, p4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p4, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 23
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p1

    invoke-static {p2, p1}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p4, Lcom/instabug/featuresrequest/R$attr;->ib_fr_add_comment_edit_text_underline_color:I

    invoke-static {p1, p4}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->c:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->e:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic i(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->d:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic j(Lcom/instabug/featuresrequest/ui/a/b;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/a/b;->J()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/a/b;->f:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->f:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/instabug/featuresrequest/ui/a/b$c;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/a/b$c;-><init>(Lcom/instabug/featuresrequest/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 25
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->g:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_1

    return-void

    .line 26
    :cond_1
    new-instance v1, Lcom/instabug/featuresrequest/ui/a/b$d;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/a/b$d;-><init>(Lcom/instabug/featuresrequest/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 41
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_2

    return-void

    .line 42
    :cond_2
    new-instance v1, Lcom/instabug/featuresrequest/ui/a/b$e;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/a/b$e;-><init>(Lcom/instabug/featuresrequest/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/instabug/featuresrequest/ui/a/b$f;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/a/b$f;-><init>(Lcom/instabug/featuresrequest/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->f:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/instabug/featuresrequest/ui/a/b$g;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/a/b$g;-><init>(Lcom/instabug/featuresrequest/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->l:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 9
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$string;->feature_request_str_adding_your_comment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v0, Landroid/widget/ProgressBar;

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/a/b;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->l:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_request_str_add_comment_error:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->e:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_email:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_1
    sget p1, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_email:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected addToolbarActionButtons()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->toolbarActionButtons:Ljava/util/ArrayList;

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/f;

    sget v2, Lcom/instabug/featuresrequest/R$string;->feature_request_str_post_comment:I

    new-instance v3, Lcom/instabug/featuresrequest/ui/a/b$b;

    invoke-direct {v3, p0}, Lcom/instabug/featuresrequest/ui/a/b$b;-><init>(Lcom/instabug/featuresrequest/ui/a/b;)V

    sget-object v4, Lcom/instabug/featuresrequest/ui/custom/f$b;->TEXT:Lcom/instabug/featuresrequest/ui/custom/f$b;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/custom/f;-><init>(IILcom/instabug/featuresrequest/ui/custom/f$a;Lcom/instabug/featuresrequest/ui/custom/f$b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->g:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->g:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->g:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method protected getContentLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$layout;->ib_fr_add_comment_fragment:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$string;->feature_request_comments:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getToolbarCloseActionButton()Lcom/instabug/featuresrequest/ui/custom/f;
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/f;

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_close:I

    sget v2, Lcom/instabug/featuresrequest/R$string;->close:I

    new-instance v3, Lcom/instabug/featuresrequest/ui/a/b$a;

    invoke-direct {v3, p0}, Lcom/instabug/featuresrequest/ui/a/b$a;-><init>(Lcom/instabug/featuresrequest/ui/a/b;)V

    sget-object v4, Lcom/instabug/featuresrequest/ui/custom/f$b;->ICON:Lcom/instabug/featuresrequest/ui/custom/f$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/custom/f;-><init>(IILcom/instabug/featuresrequest/ui/custom/f$a;Lcom/instabug/featuresrequest/ui/custom/f$b;)V

    return-object v0
.end method

.method protected initContentViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_request_comment_text_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_request_name_text_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_request_email_text_input_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->e:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_request_comment_edittext_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 6
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->c:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/instabug/featuresrequest/R$string;->add_feature:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_request_name_edittext_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->g:Lcom/google/android/material/textfield/TextInputEditText;

    .line 8
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_request_email_edittext_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 10
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_requests_comment_text_underline:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->i:Landroid/view/View;

    .line 11
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_requests_name_text_underline:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->j:Landroid/view/View;

    .line 12
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_requests_email_text_underline:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b;->k:Landroid/view/View;

    .line 14
    sget p2, Lcom/instabug/featuresrequest/R$id;->feature_request_email_disclaimer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->m:Landroid/widget/TextView;

    .line 16
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 17
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 18
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 20
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/a/b;->t()V

    .line 22
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->a:Lcom/instabug/featuresrequest/ui/a/c;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/a/c;->a()V

    .line 23
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->a:Lcom/instabug/featuresrequest/ui/a/c;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/a/c;->d()V

    .line 24
    sget p1, Lcom/instabug/featuresrequest/R$string;->feature_request_str_post_comment:I

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->findTextViewByTitle(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->n:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/a/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;->b()V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/instabug/featuresrequest/ui/a/c;

    invoke-direct {p1, p0}, Lcom/instabug/featuresrequest/ui/a/c;-><init>(Lcom/instabug/featuresrequest/ui/a/a;)V

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b;->a:Lcom/instabug/featuresrequest/ui/a/c;

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "featureId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->b:J

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/KeyboardUtils;->hide(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public y()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/a/b;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->a:Lcom/instabug/featuresrequest/ui/a/c;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/a/b;->J()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->f:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/a/b;->g:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->g:Lcom/google/android/material/textfield/TextInputEditText;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/b;->a:Lcom/instabug/featuresrequest/ui/a/c;

    new-instance v7, Lcom/instabug/featuresrequest/d/d;

    iget-wide v2, p0, Lcom/instabug/featuresrequest/ui/a/b;->b:J

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/a/b;->f:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/a/b;->g:Lcom/google/android/material/textfield/TextInputEditText;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/a/b;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/instabug/featuresrequest/d/d;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v7}, Lcom/instabug/featuresrequest/ui/a/c;->a(Lcom/instabug/featuresrequest/d/d;)V

    goto :goto_0

    :cond_3
    const-string v0, "comment text is null"

    .line 23
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
