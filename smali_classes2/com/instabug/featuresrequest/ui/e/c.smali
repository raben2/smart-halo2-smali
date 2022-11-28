.class public Lcom/instabug/featuresrequest/ui/e/c;
.super Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;
.source "AddNewFeatureFragment.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/e/b;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment<",
        "Lcom/instabug/featuresrequest/ui/e/d;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/e/b;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/material/textfield/TextInputLayout;

.field private b:Lcom/google/android/material/textfield/TextInputLayout;

.field private c:Lcom/google/android/material/textfield/TextInputLayout;

.field private d:Lcom/google/android/material/textfield/TextInputLayout;

.field private e:Lcom/google/android/material/textfield/TextInputEditText;

.field private f:Lcom/google/android/material/textfield/TextInputEditText;

.field private g:Lcom/google/android/material/textfield/TextInputEditText;

.field private h:Lcom/google/android/material/textfield/TextInputEditText;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/instabug/library/view/AlertDialog;

.field private p:Landroid/widget/TextView;
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

.method private J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/instabug/featuresrequest/ui/e/c$c;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/e/c$c;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 29
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->f:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/instabug/featuresrequest/ui/e/c$d;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/e/c$d;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->g:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/instabug/featuresrequest/ui/e/c$e;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/e/c$e;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/instabug/featuresrequest/ui/e/c$f;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/e/c$f;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/instabug/featuresrequest/ui/e/c$g;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/e/c$g;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/instabug/featuresrequest/ui/e/c$h;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/e/c$h;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->f:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->g:Lcom/google/android/material/textfield/TextInputEditText;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->g:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->toolbar:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/instabug/featuresrequest/ui/e/c$i;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/e/c$i;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/e/c;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/e/c;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/e/c;ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instabug/featuresrequest/ui/e/c;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->p:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 32
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->p:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 35
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->p:Landroid/widget/TextView;

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

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 8
    invoke-virtual {p2, p4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p4, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 11
    invoke-static {p2, p1}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p1

    invoke-static {p2, p1}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p4, Lcom/instabug/featuresrequest/R$attr;->ib_fr_add_comment_edit_text_underline_color:I

    invoke-static {p1, p4}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic h(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->m:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic i(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic k(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic m(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic n(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic p(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/c;->c:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method


# virtual methods
.method public B()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;->d()V

    :cond_0
    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->l:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c;->l:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/instabug/featuresrequest/ui/e/c;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c;->l:Landroid/view/View;

    sget v3, Lcom/instabug/featuresrequest/R$string;->feature_request_str_add_comment_valid_email:I

    invoke-virtual {p0, v3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v2, v3}, Lcom/instabug/featuresrequest/ui/e/c;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    :cond_2
    :goto_0
    return-object v1
.end method

.method public I()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->o:Lcom/instabug/library/view/AlertDialog;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "alert"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/view/AlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_email:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_email:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected addToolbarActionButtons()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->toolbarActionButtons:Ljava/util/ArrayList;

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/f;

    sget v2, Lcom/instabug/featuresrequest/R$drawable;->ibg_fr_shape_add_feat_button:I

    sget v3, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_positive_button:I

    new-instance v4, Lcom/instabug/featuresrequest/ui/e/c$b;

    invoke-direct {v4, p0}, Lcom/instabug/featuresrequest/ui/e/c$b;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    sget-object v5, Lcom/instabug/featuresrequest/ui/custom/f$b;->TEXT:Lcom/instabug/featuresrequest/ui/custom/f$b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instabug/featuresrequest/ui/custom/f;-><init>(IILcom/instabug/featuresrequest/ui/custom/f$a;Lcom/instabug/featuresrequest/ui/custom/f$b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->g:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->i:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c;->i:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/instabug/featuresrequest/ui/e/c;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c;->i:Landroid/view/View;

    sget v3, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_err_msg_required:I

    invoke-virtual {p0, v3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v2, v3}, Lcom/instabug/featuresrequest/ui/e/c;->a(ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    :cond_2
    :goto_0
    return-object v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->g:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->g:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$layout;->ib_fr_new_feature_fragment:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_appbar_title:I

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

    new-instance v3, Lcom/instabug/featuresrequest/ui/e/c$a;

    invoke-direct {v3, p0}, Lcom/instabug/featuresrequest/ui/e/c$a;-><init>(Lcom/instabug/featuresrequest/ui/e/c;)V

    sget-object v4, Lcom/instabug/featuresrequest/ui/custom/f$b;->ICON:Lcom/instabug/featuresrequest/ui/custom/f$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/custom/f;-><init>(IILcom/instabug/featuresrequest/ui/custom/f$a;Lcom/instabug/featuresrequest/ui/custom/f$b;)V

    return-object v0
.end method

.method protected initContentViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->o:Lcom/instabug/library/view/AlertDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/view/AlertDialog;

    invoke-direct {v0}, Lcom/instabug/library/view/AlertDialog;-><init>()V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->o:Lcom/instabug/library/view/AlertDialog;

    .line 3
    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_request_close_dialog_message:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/view/AlertDialog;->setMessage(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->o:Lcom/instabug/library/view/AlertDialog;

    invoke-virtual {v0, p0}, Lcom/instabug/library/view/AlertDialog;->setOnAlertViewsClickListener(Lcom/instabug/library/view/AlertDialog$OnAlertViewsClickListener;)V

    .line 7
    :cond_0
    sget v0, Lcom/instabug/featuresrequest/R$id;->relativeLayout_new_feature:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->m:Landroid/widget/RelativeLayout;

    .line 9
    sget v0, Lcom/instabug/featuresrequest/R$id;->input_layout_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_title:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    sget v0, Lcom/instabug/featuresrequest/R$id;->input_layout_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    sget v0, Lcom/instabug/featuresrequest/R$id;->name_text_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    sget v0, Lcom/instabug/featuresrequest/R$id;->email_text_input_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_email:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 16
    sget v0, Lcom/instabug/featuresrequest/R$id;->input_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 17
    sget v0, Lcom/instabug/featuresrequest/R$id;->input_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 18
    sget v0, Lcom/instabug/featuresrequest/R$id;->input_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->g:Lcom/google/android/material/textfield/TextInputEditText;

    .line 19
    sget v0, Lcom/instabug/featuresrequest/R$id;->input_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 21
    sget v0, Lcom/instabug/featuresrequest/R$id;->title_underline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->i:Landroid/view/View;

    .line 22
    sget v0, Lcom/instabug/featuresrequest/R$id;->description_underline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->j:Landroid/view/View;

    .line 23
    sget v0, Lcom/instabug/featuresrequest/R$id;->name_underline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->k:Landroid/view/View;

    .line 24
    sget v0, Lcom/instabug/featuresrequest/R$id;->email_underline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->l:Landroid/view/View;

    .line 26
    sget v0, Lcom/instabug/featuresrequest/R$id;->txtBottomHint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->n:Landroid/widget/TextView;

    .line 28
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 29
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 30
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 31
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 33
    new-instance p1, Lcom/instabug/featuresrequest/ui/e/d;

    invoke-direct {p1, p0}, Lcom/instabug/featuresrequest/ui/e/d;-><init>(Lcom/instabug/featuresrequest/ui/e/b;)V

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 35
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/e/c;->J()V

    if-nez p2, :cond_1

    .line 38
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/e/c;->L()V

    .line 41
    :cond_1
    sget p1, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_positive_button:I

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->findTextViewByTitle(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c;->p:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/e/c;->a(Ljava/lang/Boolean;)V

    .line 43
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/featuresrequest/ui/e/d;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/e/d;->c()V

    return-void
.end method

.method public o()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;->c()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->o:Lcom/instabug/library/view/AlertDialog;

    invoke-virtual {v0}, Lcom/instabug/library/view/AlertDialog;->dismiss()V

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

.method public p()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->f:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->f:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/FeaturesRequestActivity;->a()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/e/c;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/e/c;->I()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
