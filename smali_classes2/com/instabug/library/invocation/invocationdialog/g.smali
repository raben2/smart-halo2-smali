.class public Lcom/instabug/library/invocation/invocationdialog/g;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "InstabugDialogFragment.java"

# interfaces
.implements Lcom/instabug/library/invocation/invocationdialog/h;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/invocation/invocationdialog/g$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Lcom/instabug/library/invocation/invocationdialog/i;",
        ">;",
        "Lcom/instabug/library/invocation/invocationdialog/h;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/library/invocation/invocationdialog/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/instabug/library/invocation/invocationdialog/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/instabug/library/invocation/invocationdialog/g$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/instabug/library/invocation/invocationdialog/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/widget/ListView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->d:Lcom/instabug/library/invocation/invocationdialog/a;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/invocationdialog/g;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/invocation/invocationdialog/g;)Lcom/instabug/library/invocation/invocationdialog/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->d:Lcom/instabug/library/invocation/invocationdialog/a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/instabug/library/invocation/invocationdialog/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;)",
            "Lcom/instabug/library/invocation/invocationdialog/g;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/instabug/library/invocation/invocationdialog/g;

    invoke-direct {v0}, Lcom/instabug/library/invocation/invocationdialog/g;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialog_title"

    .line 5
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "dialog_items"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 10
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v0, v2}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int v2, v2, v3

    const/high16 v3, 0x43480000    # 200.0f

    .line 17
    invoke-static {v0, v3}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_1

    .line 18
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, 0x42dc0000    # 110.0f

    .line 20
    invoke-static {v0, v3}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, -0x2

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 21
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/invocation/invocationdialog/g;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/library/invocation/invocationdialog/g;)Lcom/instabug/library/invocation/invocationdialog/g$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->e:Lcom/instabug/library/invocation/invocationdialog/g$d;

    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    .line 4
    invoke-static {v0, p1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    .line 8
    instance-of v0, v0, Lcom/instabug/library/invocation/invocationdialog/a;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    if-eq p1, v1, :cond_2

    .line 14
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/invocation/invocationdialog/a;

    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->d:Lcom/instabug/library/invocation/invocationdialog/a;

    :cond_2
    return-void
.end method

.method private h()Lcom/instabug/library/invocation/invocationdialog/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/invocation/invocationdialog/i;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/invocationdialog/i;-><init>(Lcom/instabug/library/invocation/invocationdialog/h;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 23
    sget v0, Lcom/instabug/library/R$id;->instabug_pbi_container:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_0
    sget v0, Lcom/instabug/library/R$id;->image_instabug_logo:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const-string v1, "#FFFFFF"

    .line 29
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 30
    sget v1, Lcom/instabug/library/R$drawable;->ibg_core_ic_instabug_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 15
    sget v0, Lcom/instabug/library/R$id;->instabug_pbi_container:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->f:Lcom/instabug/library/invocation/invocationdialog/b;

    if-eqz v1, :cond_2

    .line 4
    sget v1, Lcom/instabug/library/R$id;->layout_title_container:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_0

    .line 6
    iget-object v4, p0, Lcom/instabug/library/invocation/invocationdialog/g;->f:Lcom/instabug/library/invocation/invocationdialog/b;

    invoke-interface {v4}, Lcom/instabug/library/invocation/invocationdialog/b;->getEnterAnimation()I

    move-result v4

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 8
    invoke-virtual {v1, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 11
    :cond_0
    sget v1, Lcom/instabug/library/R$id;->instabug_prompt_options_list_view:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 13
    iget-object v4, p0, Lcom/instabug/library/invocation/invocationdialog/g;->f:Lcom/instabug/library/invocation/invocationdialog/b;

    invoke-interface {v4}, Lcom/instabug/library/invocation/invocationdialog/b;->getEnterAnimation()I

    move-result v4

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 15
    new-instance v2, Lcom/instabug/library/invocation/invocationdialog/g$b;

    invoke-direct {v2, p0, v1}, Lcom/instabug/library/invocation/invocationdialog/g$b;-><init>(Lcom/instabug/library/invocation/invocationdialog/g;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 32
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->f:Lcom/instabug/library/invocation/invocationdialog/b;

    if-eqz v1, :cond_1

    .line 4
    sget v1, Lcom/instabug/library/R$id;->layout_title_container:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/g;->f:Lcom/instabug/library/invocation/invocationdialog/b;

    invoke-interface {v2}, Lcom/instabug/library/invocation/invocationdialog/b;->getExitAnimation()I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 10
    :cond_0
    sget v1, Lcom/instabug/library/R$id;->instabug_prompt_options_list_view:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 12
    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/g;->f:Lcom/instabug/library/invocation/invocationdialog/b;

    invoke-interface {v2}, Lcom/instabug/library/invocation/invocationdialog/b;->getExitAnimation()I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 13
    new-instance v2, Lcom/instabug/library/invocation/invocationdialog/g$c;

    invoke-direct {v2, p0, v1}, Lcom/instabug/library/invocation/invocationdialog/g$c;-><init>(Lcom/instabug/library/invocation/invocationdialog/g;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->b:Lcom/instabug/library/invocation/invocationdialog/f;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->b:Lcom/instabug/library/invocation/invocationdialog/f;

    iget-object v1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/f;->a(Ljava/util/ArrayList;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->b:Lcom/instabug/library/invocation/invocationdialog/f;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->ib_core_lyt_dialog_fragment:I

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget p1, Lcom/instabug/library/R$id;->instabug_main_prompt_container:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/invocationdialog/g;->a(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/library/R$attr;->instabug_background_color:I

    invoke-static {p2, v0}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result p2

    .line 6
    invoke-static {p1, p2}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    .line 9
    :cond_0
    sget p1, Lcom/instabug/library/R$id;->instabug_fragment_title:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string p2, "title"

    .line 11
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->d:Lcom/instabug/library/invocation/invocationdialog/a;

    if-eqz p1, :cond_8

    .line 15
    sget p1, Lcom/instabug/library/R$id;->instabug_chats_list_icon_container:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->e:Lcom/instabug/library/invocation/invocationdialog/g$d;

    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Lcom/instabug/library/invocation/invocationdialog/g$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/invocationdialog/g$a;-><init>(Lcom/instabug/library/invocation/invocationdialog/g;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_2
    sget p1, Lcom/instabug/library/R$id;->instabug_chats_list_icon:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 39
    :cond_3
    sget p1, Lcom/instabug/library/R$id;->instabug_notification_count:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->d:Lcom/instabug/library/invocation/invocationdialog/a;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getBadgeCount()I

    move-result v0

    if-lez v0, :cond_7

    if-eqz p1, :cond_4

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/instabug/library/R$color;->ib_core_notification_dot_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    if-eqz p1, :cond_6

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/library/R$drawable;->ibg_core_bg_white_oval:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 49
    invoke-static {p2, v0}, Lcom/instabug/library/util/Colorizer;->getTintedDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz p1, :cond_8

    .line 54
    iget-object p2, p0, Lcom/instabug/library/invocation/invocationdialog/g;->d:Lcom/instabug/library/invocation/invocationdialog/a;

    invoke-virtual {p2}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;->getBadgeCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    const/16 p2, 0x8

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :cond_8
    :goto_0
    sget p1, Lcom/instabug/library/R$id;->instabug_prompt_options_list_view:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->g:Landroid/widget/ListView;

    if-eqz p1, :cond_9

    .line 65
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    new-instance p1, Lcom/instabug/library/invocation/invocationdialog/f;

    invoke-direct {p1}, Lcom/instabug/library/invocation/invocationdialog/f;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->b:Lcom/instabug/library/invocation/invocationdialog/f;

    .line 67
    iget-object p2, p0, Lcom/instabug/library/invocation/invocationdialog/g;->g:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    :cond_9
    invoke-virtual {p0}, Lcom/instabug/library/invocation/invocationdialog/g;->g()V

    .line 71
    invoke-virtual {p0}, Lcom/instabug/library/invocation/invocationdialog/g;->e()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/instabug/library/invocation/invocationdialog/g$d;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/instabug/library/invocation/invocationdialog/b;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/g$d;

    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->e:Lcom/instabug/library/invocation/invocationdialog/g$d;

    .line 4
    check-cast p1, Lcom/instabug/library/invocation/invocationdialog/b;

    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->f:Lcom/instabug/library/invocation/invocationdialog/b;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement InstabugDialogFragment.Callbacks and AnimationProvider"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 2
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p1

    const v0, 0x10f0001

    invoke-virtual {p1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-nez p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/instabug/library/invocation/invocationdialog/g;->h()Lcom/instabug/library/invocation/invocationdialog/i;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    :cond_1
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialog_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/invocationdialog/g;->b(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/invocation/invocationdialog/g;->f()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->a:Landroid/widget/TextView;

    .line 3
    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->g:Landroid/widget/ListView;

    .line 4
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->e:Lcom/instabug/library/invocation/invocationdialog/g$d;

    .line 3
    iput-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/g;->f:Lcom/instabug/library/invocation/invocationdialog/b;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->g:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/g;->e:Lcom/instabug/library/invocation/invocationdialog/g$d;

    if-eqz p1, :cond_1

    .line 5
    iget-object p2, p0, Lcom/instabug/library/invocation/invocationdialog/g;->c:Ljava/util/ArrayList;

    .line 6
    invoke-static {p2, p3}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/view/View;

    sget p4, Lcom/instabug/library/R$id;->instabug_main_prompt_container:I

    .line 7
    invoke-virtual {p0, p4}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    sget p4, Lcom/instabug/library/R$id;->instabug_pbi_container:I

    .line 8
    invoke-virtual {p0, p4}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p3, p5

    .line 9
    invoke-interface {p1, p2, p3}, Lcom/instabug/library/invocation/invocationdialog/g$d;->onDialogItemClicked(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;[Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/i;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/i;->b()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/i;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/i;->c()V

    :cond_0
    return-void
.end method
