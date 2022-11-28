.class public Lcom/instabug/chat/ui/g/d;
.super Lcom/instabug/library/core/ui/ToolbarFragment;
.source "ChatsFragment.java"

# interfaces
.implements Lcom/instabug/chat/ui/g/c;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/ui/g/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/ToolbarFragment<",
        "Lcom/instabug/chat/ui/g/b;",
        ">;",
        "Lcom/instabug/chat/ui/g/c;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/chat/ui/g/a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/instabug/chat/ui/g/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/instabug/chat/ui/g/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/chat/ui/g/d;

    invoke-direct {v0}, Lcom/instabug/chat/ui/g/d;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "compose_key"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/b;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/instabug/chat/ui/g/d;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$id;->instabug_fragment_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/chat/ui/g/d;

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getContentLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/chat/R$layout;->instabug_fragment_chats:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->CONVERSATIONS_LIST_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/chat/R$string;->instabug_str_conversations:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initContentViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p2, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    sget p2, Lcom/instabug/chat/R$id;->instabug_lst_chats:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 4
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5
    new-instance v0, Lcom/instabug/chat/ui/g/a;

    iget-object v1, p0, Lcom/instabug/chat/ui/g/d;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/instabug/chat/ui/g/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/instabug/chat/ui/g/d;->a:Lcom/instabug/chat/ui/g/a;

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    sget p2, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    sget p2, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/instabug/chat/R$id;->TAG_BTN_CLOSE:I

    const-string v0, "instabug_btn_close"

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/g/d;->a:Lcom/instabug/chat/ui/g/a;

    iget-object v1, p0, Lcom/instabug/chat/ui/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/instabug/chat/ui/g/a;->a(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/g/d;->a:Lcom/instabug/chat/ui/g/a;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/ToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lcom/instabug/library/Feature;->REPLIES:Lcom/instabug/library/Feature;

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/instabug/library/Feature;->CHATS:Lcom/instabug/library/Feature;

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/ToolbarFragment;->setRetainInstance(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/instabug/chat/ui/ChatActivity;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ui/g/d$a;

    iput-object p1, p0, Lcom/instabug/chat/ui/g/d;->c:Lcom/instabug/chat/ui/g/d$a;

    .line 9
    :cond_1
    new-instance p1, Lcom/instabug/chat/ui/g/e;

    invoke-direct {p1, p0}, Lcom/instabug/chat/ui/g/e;-><init>(Lcom/instabug/chat/ui/g/c;)V

    iput-object p1, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/chat/ui/g/d;->b:Ljava/util/ArrayList;

    return-void
.end method

.method protected onDoneButtonClicked()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Chat id: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/instabug/chat/e/b;

    invoke-virtual {p4}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    const-class p4, Lcom/instabug/chat/ui/g/d;

    invoke-static {p4, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/instabug/chat/ui/g/d;->c:Lcom/instabug/chat/ui/g/d$a;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/e/b;

    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/instabug/chat/ui/g/d$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/chat/ui/g/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/g/b;->b()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/chat/ui/g/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/g/b;->g()V

    :cond_0
    return-void
.end method
