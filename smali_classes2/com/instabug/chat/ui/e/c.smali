.class public Lcom/instabug/chat/ui/e/c;
.super Lcom/instabug/library/core/ui/ToolbarFragment;
.source "AnnotationFragment.java"

# interfaces
.implements Lcom/instabug/chat/ui/e/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_NULLABLE",
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/ui/e/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/ToolbarFragment<",
        "Lcom/instabug/chat/ui/e/a;",
        ">;",
        "Lcom/instabug/chat/ui/e/b;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;

.field private e:Lcom/instabug/library/annotation/AnnotationLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/instabug/chat/ui/e/c$a;

.field private g:Landroid/app/ProgressDialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/instabug/chat/ui/e/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/chat/ui/e/c;

    invoke-direct {v0}, Lcom/instabug/chat/ui/e/c;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "chat_id"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "image_uri"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "attachment_type"

    .line 6
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/e/c;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/e/c;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/chat/ui/e/c;->f:Lcom/instabug/chat/ui/e/c$a;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/instabug/chat/ui/e/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/chat/ui/e/c;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/instabug/chat/ui/e/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/instabug/chat/ui/e/c$a;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "annotation_fragment_for_chat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/chat/R$layout;->instabug_fragment_annotation:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/e/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected initContentViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p2, Lcom/instabug/library/R$id;->instabug_btn_toolbar_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 3
    sget v0, Lcom/instabug/library/R$drawable;->ibg_core_ic_send:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 5
    sget p2, Lcom/instabug/library/R$id;->annotationLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/annotation/AnnotationLayout;

    iput-object p1, p0, Lcom/instabug/chat/ui/e/c;->e:Lcom/instabug/library/annotation/AnnotationLayout;

    .line 7
    iget-object p2, p0, Lcom/instabug/chat/ui/e/c;->d:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/instabug/library/annotation/AnnotationLayout;->setBaseImage(Landroid/net/Uri;Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/chat/ui/e/c;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/ui/e/c;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/chat/R$string;->instabug_str_dialog_message_preparing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/instabug/chat/ui/e/c;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected onCloseButtonClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/e/c;->f:Lcom/instabug/chat/ui/e/c$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/instabug/chat/ui/e/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/chat/ui/e/c;->d:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/instabug/chat/ui/e/c$a;->a(Ljava/lang/String;Landroid/net/Uri;)V

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
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/ToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "chat_fragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "chat_fragment"

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ui/e/c$a;

    iput-object p1, p0, Lcom/instabug/chat/ui/e/c;->f:Lcom/instabug/chat/ui/e/c$a;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/chat/ui/e/c;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/chat/ui/e/c;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "attachment_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/chat/ui/e/c;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "image_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/instabug/chat/ui/e/c;->d:Landroid/net/Uri;

    .line 13
    :cond_1
    new-instance p1, Lcom/instabug/chat/ui/e/d;

    invoke-direct {p1, p0}, Lcom/instabug/chat/ui/e/d;-><init>(Lcom/instabug/chat/ui/e/b;)V

    iput-object p1, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-void
.end method

.method protected onDoneButtonClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/chat/ui/e/c;->e:Lcom/instabug/library/annotation/AnnotationLayout;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/instabug/chat/ui/e/a;

    invoke-virtual {v1}, Lcom/instabug/library/annotation/AnnotationLayout;->getAnnotatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/chat/ui/e/c;->d:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/instabug/chat/ui/e/a;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
