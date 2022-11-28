.class public Lcom/instabug/bug/view/h/c;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "ExtraFieldsFragment.java"

# interfaces
.implements Lcom/instabug/bug/view/h/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/view/h/c$c;,
        Lcom/instabug/bug/view/h/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Lcom/instabug/bug/view/h/d;",
        ">;",
        "Lcom/instabug/bug/view/h/b;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private e:Lcom/instabug/bug/view/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/instabug/bug/view/h/c;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/instabug/bug/view/h/c;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/instabug/bug/view/h/c;

    invoke-direct {p0}, Lcom/instabug/bug/view/h/c;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private i()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_4

    .line 2
    check-cast v0, Lcom/instabug/bug/view/h/d;

    invoke-virtual {v0}, Lcom/instabug/bug/view/h/d;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    sget v0, Lcom/instabug/bug/R$id;->linearLayout:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/instabug/bug/R$layout;->ibg_bug_item_edittext:I

    .line 7
    invoke-virtual {v3, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 9
    new-instance v4, Lcom/instabug/bug/view/h/c$c;

    invoke-direct {v4, v3}, Lcom/instabug/bug/view/h/c$c;-><init>(Landroid/view/View;)V

    .line 10
    invoke-virtual {v4}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v4}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/instabug/bug/model/b;

    invoke-virtual {v6}, Lcom/instabug/bug/model/b;->e()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    .line 12
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/instabug/bug/model/b;

    invoke-virtual {v7}, Lcom/instabug/bug/model/b;->a()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " *"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    .line 13
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/instabug/bug/model/b;

    invoke-virtual {v6}, Lcom/instabug/bug/model/b;->a()Ljava/lang/CharSequence;

    move-result-object v6

    .line 14
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v5, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instabug/bug/model/b;

    invoke-virtual {v5}, Lcom/instabug/bug/model/b;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 18
    invoke-virtual {v4}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/instabug/bug/model/b;

    invoke-virtual {v6}, Lcom/instabug/bug/model/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_1
    invoke-virtual {v4}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setId(I)V

    .line 21
    invoke-virtual {v4}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/instabug/bug/view/h/c$b;

    .line 22
    invoke-virtual {v4}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/instabug/bug/view/h/c$b;-><init>(Lcom/instabug/bug/view/h/c;Landroid/widget/EditText;)V

    .line 23
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 25
    invoke-virtual {v4}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_2
    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 6
    new-instance v0, Lcom/instabug/bug/view/h/c$c;

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/instabug/bug/view/h/c$c;-><init>(Landroid/view/View;)V

    .line 7
    invoke-virtual {v0}, Lcom/instabug/bug/view/h/c$c;->b()V

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/model/b;

    .line 3
    sget v1, Lcom/instabug/bug/R$string;->instabug_err_invalid_extra_field:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lcom/instabug/bug/model/b;->a()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/instabug/bug/view/h/c$c;

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/instabug/bug/view/h/c$c;-><init>(Landroid/view/View;)V

    .line 8
    invoke-virtual {v1}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/instabug/bug/view/h/c$c;->a()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 11
    :cond_0
    invoke-virtual {v1, v0}, Lcom/instabug/bug/view/h/c$c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_3

    .line 2
    check-cast v0, Lcom/instabug/bug/view/h/d;

    invoke-virtual {v0}, Lcom/instabug/bug/view/h/d;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/view/h/c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v1, Lcom/instabug/bug/view/h/d;

    invoke-virtual {v1, v0}, Lcom/instabug/bug/view/h/d;->a(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/instabug/bug/view/h/c;->d:Z

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/bug/c;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "ExtraFieldsFragment"

    const-string v1, "Couldn\'t commit the Bug due to Null context"

    .line 12
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/bug/view/h/c;->t()V

    :cond_3
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/bug/R$layout;->ibg_bug_lyt_extra_fields:I

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/view/h/c;->i()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/instabug/bug/view/b;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/b;

    iput-object p1, p0, Lcom/instabug/bug/view/h/c;->e:Lcom/instabug/bug/view/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must implement BugReportingActivityCallback"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setHasOptionsMenu(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/bug/view/h/c;->a:Ljava/lang/String;

    .line 10
    :cond_1
    new-instance p1, Lcom/instabug/bug/view/h/d;

    invoke-direct {p1, p0}, Lcom/instabug/bug/view/h/d;-><init>(Lcom/instabug/bug/view/h/b;)V

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 11
    iget-object p1, p0, Lcom/instabug/bug/view/h/c;->e:Lcom/instabug/bug/view/b;

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Lcom/instabug/bug/view/b;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/bug/view/h/c;->f:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/instabug/bug/view/h/c;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 14
    iget-object v0, p0, Lcom/instabug/bug/view/h/c;->e:Lcom/instabug/bug/view/b;

    invoke-interface {v0, p1}, Lcom/instabug/bug/view/b;->a(Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/instabug/bug/view/h/c;->e:Lcom/instabug/bug/view/b;

    invoke-interface {p1}, Lcom/instabug/bug/view/b;->s()V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    sget v0, Lcom/instabug/bug/R$menu;->ibg_bug_menu_extended_reporting:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    sget p2, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 3
    sget v0, Lcom/instabug/bug/R$id;->instabug_bugreporting_next:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 8
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/util/LocaleUtils;->isRTL(Ljava/util/Locale;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    sget p2, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    sget v0, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 14
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p2, v0}, Lcom/instabug/library/util/DrawableUtils;->getRotateDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 15
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/h/c;->e:Lcom/instabug/bug/view/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/bug/view/b;->e()V

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/h/c;->e:Lcom/instabug/bug/view/b;

    iget-object v1, p0, Lcom/instabug/bug/view/h/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instabug/bug/view/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/view/h/c;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/instabug/bug/view/h/c;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instabug/bug/view/h/c;->c:J

    .line 9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    if-ne v0, v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/instabug/bug/view/h/c;->e()V

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_3
    return v1
.end method

.method public t()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/KeyboardUtils;->hide(Landroid/app/Activity;)V

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instabug/bug/view/h/c$a;

    invoke-direct {v1, p0}, Lcom/instabug/bug/view/h/c$a;-><init>(Lcom/instabug/bug/view/h/c;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
