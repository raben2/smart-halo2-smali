.class public Lcom/instabug/featuresrequest/ui/c/a;
.super Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;
.source "FeatureRequestsDetailsFragment.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/c/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment<",
        "Lcom/instabug/featuresrequest/ui/c/d;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/c/c;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/instabug/featuresrequest/d/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ListView;

.field private p:Z

.field private q:Lcom/instabug/featuresrequest/ui/c/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/featuresrequest/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/instabug/featuresrequest/ui/b/c/h;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->p:Z

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->r:Ljava/util/ArrayList;

    .line 24
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->t:Z

    return-void
.end method

.method public static a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/featuresrequest/ui/b/c/h;)Lcom/instabug/featuresrequest/ui/c/a;
    .locals 2

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_feature"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    new-instance p0, Lcom/instabug/featuresrequest/ui/c/a;

    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/c/a;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/c/a;->a(Lcom/instabug/featuresrequest/ui/b/c/h;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/c/a;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private a(Lcom/instabug/featuresrequest/ui/b/c/h;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->s:Lcom/instabug/featuresrequest/ui/b/c/h;

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/c/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/c/a;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/c/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/instabug/featuresrequest/ui/c/a;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private c(Lcom/instabug/featuresrequest/d/b;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/featuresrequest/ui/c/a$d;

    invoke-direct {v1, p0, p1}, Lcom/instabug/featuresrequest/ui/c/a$d;-><init>(Lcom/instabug/featuresrequest/ui/c/a;Lcom/instabug/featuresrequest/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/instabug/featuresrequest/ui/c/a;)Lcom/instabug/featuresrequest/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/featuresrequest/ui/c/a;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/featuresrequest/ui/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/featuresrequest/ui/c/a;->p:Z

    return p0
.end method

.method static synthetic g(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/c/a;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/c/a;->a:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic i(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/c/a;->c:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public E()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/b;)V
    .locals 10

    .line 9
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v4, p0, Lcom/instabug/featuresrequest/ui/c/a;->k:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->e()Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/instabug/featuresrequest/R$string;->feature_request_str_more:I

    .line 18
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/instabug/featuresrequest/R$string;->feature_request_str_less:I

    .line 19
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->p:Z

    xor-int/lit8 v8, v0, 0x1

    new-instance v9, Lcom/instabug/featuresrequest/ui/c/a$c;

    invoke-direct {v9, p0}, Lcom/instabug/featuresrequest/ui/c/a$c;-><init>(Lcom/instabug/featuresrequest/ui/c/a;)V

    .line 20
    invoke-static/range {v4 .. v9}, Lcom/instabug/featuresrequest/g/j;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 43
    :goto_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 47
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_request_owner:I

    new-array v4, v2, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_request_owner_anonymous:I

    .line 49
    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->i:Landroid/widget/TextView;

    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_request_comments_count:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->l()Lcom/instabug/featuresrequest/d/b$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instabug/featuresrequest/g/g;->a(Lcom/instabug/featuresrequest/d/b$a;Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->d()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/instabug/featuresrequest/g/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/c/a;->c(Lcom/instabug/featuresrequest/d/b;)V

    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/g;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->q:Lcom/instabug/featuresrequest/ui/c/e;

    .line 62
    new-instance v0, Lcom/instabug/featuresrequest/ui/c/e;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/instabug/featuresrequest/ui/c/e;-><init>(Ljava/util/ArrayList;Lcom/instabug/featuresrequest/ui/c/c;)V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->q:Lcom/instabug/featuresrequest/ui/c/e;

    .line 63
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->o:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/g;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->q:Lcom/instabug/featuresrequest/ui/c/e;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 66
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->l:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->o:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    .line 68
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->o:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/instabug/featuresrequest/g/f;->a(Landroid/widget/ListView;)V

    return-void
.end method

.method protected addToolbarActionButtons()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->toolbarActionButtons:Ljava/util/ArrayList;

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/f;

    sget v2, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_str_votes:I

    new-instance v3, Lcom/instabug/featuresrequest/ui/c/a$b;

    invoke-direct {v3, p0}, Lcom/instabug/featuresrequest/ui/c/a$b;-><init>(Lcom/instabug/featuresrequest/ui/c/a;)V

    sget-object v4, Lcom/instabug/featuresrequest/ui/custom/f$b;->VOTE:Lcom/instabug/featuresrequest/ui/custom/f$b;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/custom/f;-><init>(IILcom/instabug/featuresrequest/ui/custom/f$a;Lcom/instabug/featuresrequest/ui/custom/f$b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/instabug/featuresrequest/d/b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/c/a;->c(Lcom/instabug/featuresrequest/d/b;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$layout;->ib_fr_features_details_fragment:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$string;->feature_requests_details:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getToolbarCloseActionButton()Lcom/instabug/featuresrequest/ui/custom/f;
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/f;

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_back:I

    sget v2, Lcom/instabug/featuresrequest/R$string;->feature_request_go_back:I

    new-instance v3, Lcom/instabug/featuresrequest/ui/c/a$a;

    invoke-direct {v3, p0}, Lcom/instabug/featuresrequest/ui/c/a$a;-><init>(Lcom/instabug/featuresrequest/ui/c/a;)V

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
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->toolbar:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_0

    .line 2
    sget v0, Lcom/instabug/featuresrequest/R$id;->ib_feature_request_toolbar_vote_action_layout:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->a:Landroid/widget/LinearLayout;

    .line 3
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->toolbar:Landroid/widget/RelativeLayout;

    sget v0, Lcom/instabug/featuresrequest/R$id;->ib_toolbar_vote_count:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->c:Landroid/widget/TextView;

    .line 4
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->toolbar:Landroid/widget/RelativeLayout;

    sget v0, Lcom/instabug/featuresrequest/R$id;->ib_toolbar_vote_icon:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->j:Landroid/widget/ImageView;

    .line 6
    :cond_0
    sget p2, Lcom/instabug/featuresrequest/R$id;->ib_fr_tv_feature_details_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->k:Landroid/widget/TextView;

    .line 7
    sget p2, Lcom/instabug/featuresrequest/R$id;->ib_fr_details_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->d:Landroid/widget/TextView;

    .line 8
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_txt_feature_request_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->e:Landroid/widget/TextView;

    .line 9
    sget p2, Lcom/instabug/featuresrequest/R$id;->ib_txt_feature_request_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->g:Landroid/widget/TextView;

    .line 10
    sget p2, Lcom/instabug/featuresrequest/R$id;->ib_txt_feature_request_owner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->f:Landroid/widget/TextView;

    .line 11
    sget p2, Lcom/instabug/featuresrequest/R$id;->tv_add_comment:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->h:Landroid/widget/TextView;

    .line 12
    sget p2, Lcom/instabug/featuresrequest/R$id;->ib_features_request_comment_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->i:Landroid/widget/TextView;

    .line 13
    sget p2, Lcom/instabug/featuresrequest/R$id;->ib_fr_details_no_comments_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->l:Landroid/widget/LinearLayout;

    .line 14
    sget p2, Lcom/instabug/featuresrequest/R$id;->ib_fr_details_no_comments_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->n:Landroid/widget/ImageView;

    .line 15
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_feature_details_comments_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->o:Landroid/widget/ListView;

    .line 16
    sget p2, Lcom/instabug/featuresrequest/R$id;->addCommentLayoutContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->m:Landroid/widget/LinearLayout;

    .line 18
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$attr;->ib_fr_no_comments_icon_color:I

    invoke-static {p2, v0}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance p1, Lcom/instabug/featuresrequest/ui/c/e;

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->r:Ljava/util/ArrayList;

    invoke-direct {p1, p2, p0}, Lcom/instabug/featuresrequest/ui/c/e;-><init>(Ljava/util/ArrayList;Lcom/instabug/featuresrequest/ui/c/c;)V

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->q:Lcom/instabug/featuresrequest/ui/c/e;

    .line 25
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->o:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    if-nez p1, :cond_2

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/c/a;->a(Lcom/instabug/featuresrequest/d/b;)V

    .line 31
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/featuresrequest/ui/c/d;

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p2}, Lcom/instabug/featuresrequest/d/b;->g()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/instabug/featuresrequest/ui/c/d;->a(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/instabug/featuresrequest/R$id;->tv_add_comment:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/instabug/featuresrequest/R$id;->instabug_fragment_container:I

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    .line 6
    invoke-virtual {v1}, Lcom/instabug/featuresrequest/d/b;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instabug/featuresrequest/ui/a/b;->a(J)Lcom/instabug/featuresrequest/ui/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "add_comment"

    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
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

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_feature"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/d/b;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    .line 5
    :cond_0
    new-instance p1, Lcom/instabug/featuresrequest/ui/c/d;

    invoke-direct {p1, p0}, Lcom/instabug/featuresrequest/ui/c/d;-><init>(Lcom/instabug/featuresrequest/ui/c/c;)V

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->s:Lcom/instabug/featuresrequest/ui/b/c/h;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->t:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/h;->t()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/featuresrequest/d/f;

    .line 4
    instance-of v4, v2, Lcom/instabug/featuresrequest/d/e;

    if-eqz v4, :cond_1

    .line 5
    check-cast v2, Lcom/instabug/featuresrequest/d/e;

    invoke-virtual {v2}, Lcom/instabug/featuresrequest/d/e;->c()Lcom/instabug/featuresrequest/d/b$a;

    move-result-object v1

    sget-object v2, Lcom/instabug/featuresrequest/d/b$a;->Completed:Lcom/instabug/featuresrequest/d/b$a;

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->m:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/featuresrequest/d/b;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/d/b;->a(I)V

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p0, v0}, Lcom/instabug/featuresrequest/ui/c/a;->a(Lcom/instabug/featuresrequest/d/b;)V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/featuresrequest/ui/c/d;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a;->b:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/d/b;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/featuresrequest/ui/c/d;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a;->o:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/instabug/featuresrequest/g/f;->a(Landroid/widget/ListView;)V

    return-void
.end method
