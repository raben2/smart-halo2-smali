.class public Lcom/instabug/bug/view/g/c;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "DisclaimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/view/g/c$b;
    }
.end annotation


# instance fields
.field a:Lcom/instabug/bug/view/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Lcom/instabug/bug/view/g/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field c:Landroid/widget/ListView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field d:Lcom/instabug/bug/view/g/c$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/instabug/bug/view/g/c;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method private a(Lcom/instabug/bug/view/g/a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/g/c;->d:Lcom/instabug/bug/view/g/c$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/instabug/bug/view/g/c$b;->a(Lcom/instabug/bug/view/g/a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/view/g/c;Lcom/instabug/bug/view/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/bug/view/g/c;->a(Lcom/instabug/bug/view/g/a;)V

    return-void
.end method

.method public static e()Lcom/instabug/bug/view/g/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/bug/view/g/c;

    invoke-direct {v0}, Lcom/instabug/bug/view/g/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->instabug_lyt_disclaimer:I

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/util/SystemServiceUtils;->hideInputMethod(Landroid/app/Activity;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lcom/instabug/bug/view/g/e;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/instabug/bug/view/g/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/instabug/bug/view/g/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/instabug/bug/view/g/c;->b:Lcom/instabug/bug/view/g/e;

    .line 9
    :cond_1
    sget p1, Lcom/instabug/library/R$id;->instabug_disclaimer_list:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/instabug/bug/view/g/c;->c:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    .line 10
    iget-object p2, p0, Lcom/instabug/bug/view/g/c;->b:Lcom/instabug/bug/view/g/e;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/instabug/bug/view/g/c;->c:Landroid/widget/ListView;

    new-instance p2, Lcom/instabug/bug/view/g/c$a;

    invoke-direct {p2, p0}, Lcom/instabug/bug/view/g/c$a;-><init>(Lcom/instabug/bug/view/g/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/instabug/bug/view/g/c;->a:Lcom/instabug/bug/view/b;

    if-eqz p1, :cond_3

    .line 27
    invoke-interface {p1}, Lcom/instabug/bug/view/b;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/bug/view/g/c;->e:Ljava/lang/CharSequence;

    .line 28
    iget-object p1, p0, Lcom/instabug/bug/view/g/c;->a:Lcom/instabug/bug/view/b;

    sget p2, Lcom/instabug/library/R$string;->ib_str_report_data:I

    invoke-virtual {p0, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/instabug/bug/view/b;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/bug/view/b;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/instabug/bug/view/g/c$b;

    iput-object v0, p0, Lcom/instabug/bug/view/g/c;->d:Lcom/instabug/bug/view/g/c$b;

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/b;

    iput-object v0, p0, Lcom/instabug/bug/view/g/c;->a:Lcom/instabug/bug/view/b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement DisclaimerFragment.Callbacks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/g/c;->a:Lcom/instabug/bug/view/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/bug/view/g/c;->e:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/bug/view/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/bug/view/g/c;->a:Lcom/instabug/bug/view/b;

    return-void
.end method
