.class public Lcom/instabug/chat/ui/f/d;
.super Lcom/instabug/library/core/ui/ToolbarFragment;
.source "ChatFragment.java"

# interfaces
.implements Lcom/instabug/chat/ui/f/c;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/chat/ui/f/g$i;
.implements Lcom/instabug/chat/ui/f/a$b;
.implements Lcom/instabug/chat/ui/e/c$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED",
        "ERADICATE_FIELD_NOT_NULLABLE"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/ToolbarFragment<",
        "Lcom/instabug/chat/ui/f/b;",
        ">;",
        "Lcom/instabug/chat/ui/f/c;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/chat/ui/f/g$i;",
        "Lcom/instabug/chat/ui/f/a$b;",
        "Lcom/instabug/chat/ui/e/c$a;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/instabug/chat/ui/f/g;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/ui/f/d;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lcom/instabug/chat/e/a;)Lcom/instabug/chat/ui/f/d;
    .locals 3

    .line 2
    new-instance v0, Lcom/instabug/chat/ui/f/d;

    invoke-direct {v0}, Lcom/instabug/chat/ui/f/d;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "chat_number"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "attachment"

    .line 5
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/instabug/chat/ui/f/d;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/instabug/chat/ui/f/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/chat/ui/f/d;

    invoke-direct {v0}, Lcom/instabug/chat/ui/f/d;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "chat_number"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private t()Landroid/content/Intent;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "*/*"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const-string v1, "image/*"

    const-string v2, "video/*"

    .line 9
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :cond_1
    sget v1, Lcom/instabug/chat/R$string;->instabug_str_pick_media_chooser_title:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    sget v1, Lcom/instabug/chat/R$id;->instabug_fragment_container:I

    .line 4
    invoke-static {p0}, Lcom/instabug/chat/ui/f/a;->a(Lcom/instabug/chat/ui/f/a$b;)Lcom/instabug/chat/ui/f/a;

    move-result-object v2

    const-string v3, "attachments_bottom_sheet_fragment"

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "attachments_bottom_sheet_fragment"

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private v()V
    .locals 4

    .line 1
    new-instance v0, Lcom/instabug/chat/ui/f/d$a;

    invoke-direct {v0, p0}, Lcom/instabug/chat/ui/f/d$a;-><init>(Lcom/instabug/chat/ui/f/d;)V

    new-instance v1, Lcom/instabug/chat/ui/f/d$b;

    invoke-direct {v1, p0}, Lcom/instabug/chat/ui/f/d$b;-><init>(Lcom/instabug/chat/ui/f/d;)V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v3, 0xa2

    invoke-static {p0, v2, v3, v0, v1}, Lcom/instabug/library/util/PermissionsUtils;->requestPermission(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 15
    const-class v0, Lcom/instabug/chat/ChatPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ChatPlugin;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/d;->x()V

    :cond_1
    :goto_0
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xf32

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 12
    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/f/b;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    .line 23
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 26
    sget v1, Lcom/instabug/chat/R$id;->instabug_fragment_container:I

    iget-object v2, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v2, Lcom/instabug/chat/ui/f/b;

    .line 27
    invoke-interface {v2}, Lcom/instabug/chat/ui/f/b;->d()Lcom/instabug/chat/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/chat/e/b;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v3, Lcom/instabug/chat/ui/f/b;

    .line 28
    invoke-interface {v3}, Lcom/instabug/chat/ui/f/b;->d()Lcom/instabug/chat/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v2, v3, p1, p2}, Lcom/instabug/chat/ui/e/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/instabug/chat/ui/e/c;

    move-result-object p1

    const-string p2, "annotation_fragment_for_chat"

    .line 30
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "annotation_fragment_for_chat"

    .line 33
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/SystemServiceUtils;->hideInputMethod(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 5
    sget v1, Lcom/instabug/chat/R$id;->instabug_fragment_container:I

    .line 6
    invoke-static {p1}, Lcom/instabug/chat/ui/f/f;->a(Ljava/lang/String;)Lcom/instabug/chat/ui/f/f;

    move-result-object p1

    const-string v2, "image_attachment_viewer_fragment"

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "image_attachment_viewer_fragment"

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 14
    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/f/b;->d()Lcom/instabug/chat/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/chat/ui/f/b;

    invoke-interface {p1}, Lcom/instabug/chat/ui/f/b;->d()Lcom/instabug/chat/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v1, Lcom/instabug/chat/ui/f/b;

    .line 16
    invoke-interface {v1, p2, p3}, Lcom/instabug/chat/ui/f/b;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/instabug/chat/e/a;

    move-result-object p2

    .line 17
    invoke-interface {p1, v0, p2}, Lcom/instabug/chat/ui/f/b;->a(Ljava/lang/String;Lcom/instabug/chat/e/a;)Lcom/instabug/chat/e/d;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/instabug/chat/ui/f/b;->a(Lcom/instabug/chat/e/d;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/instabug/chat/ui/f/d;->b:Lcom/instabug/chat/ui/f/g;

    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0, p1}, Lcom/instabug/chat/ui/f/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/chat/ui/f/g;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/d;->v()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/SystemServiceUtils;->hideInputMethod(Landroid/app/Activity;)V

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 10
    sget v1, Lcom/instabug/chat/R$id;->instabug_fragment_container:I

    .line 11
    invoke-static {p1}, Lcom/instabug/library/internal/video/VideoPlayerFragment;->newInstance(Ljava/lang/String;)Lcom/instabug/library/internal/video/VideoPlayerFragment;

    move-result-object p1

    const-string v2, "VideoPlayerFragment"

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "VideoPlayerFragment"

    .line 14
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public d()V
    .locals 8

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v0, Lcom/instabug/library/R$string;->instabug_str_video_length_limit_warning_title:I

    .line 10
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/instabug/library/R$string;->instabug_str_video_length_limit_warning_message:I

    .line 11
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/instabug/chat/R$string;->instabug_str_ok:I

    .line 12
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/instabug/chat/ui/f/d$d;

    invoke-direct {v6, p0}, Lcom/instabug/chat/ui/f/d$d;-><init>(Lcom/instabug/chat/ui/f/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 13
    invoke-static/range {v1 .. v7}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/ToolbarFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to view this url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nError message: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6
    sget v1, Lcom/instabug/chat/R$id;->instabug_btn_attach:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/instabug/library/internal/video/RequestPermissionActivityLauncher;->start(Landroid/app/Activity;ZZLcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/ui/f/d;->s()V

    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/chat/R$layout;->instabug_fragment_chat:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/instabug/chat/cache/ChatsCacheManager;->getChat(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget v0, Lcom/instabug/chat/R$string;->instabug_str_empty:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v0, Lcom/instabug/chat/R$string;->instabug_str_bugreport_file_size_limit_warning_title:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/instabug/chat/R$string;->instabug_str_bugreport_file_size_limit_warning_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x32

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 6
    invoke-virtual {p0, v0, v3}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/instabug/chat/R$string;->instabug_str_ok:I

    .line 8
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/instabug/chat/ui/f/d$c;

    invoke-direct {v6, p0}, Lcom/instabug/chat/ui/f/d$c;-><init>(Lcom/instabug/chat/ui/f/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 9
    invoke-static/range {v1 .. v7}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected initContentViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    sget p2, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget p2, Lcom/instabug/chat/R$id;->instabug_lst_messages:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 3
    sget v0, Lcom/instabug/chat/R$id;->instabug_edit_text_new_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instabug/chat/ui/f/d;->c:Landroid/widget/EditText;

    .line 4
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->CONVERSATION_TEXT_FIELD_HINT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/chat/R$string;->instabug_str_sending_message_hint:I

    .line 5
    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/ToolbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/chat/ui/f/d;->c:Landroid/widget/EditText;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 10
    sget v0, Lcom/instabug/chat/R$id;->instabug_btn_send:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/instabug/chat/R$drawable;->ibg_core_ic_send:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/instabug/library/util/Colorizer;->getPrimaryColorTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance v0, Lcom/instabug/chat/ui/f/g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2, p0}, Lcom/instabug/chat/ui/f/g;-><init>(Ljava/util/List;Landroid/content/Context;Landroid/widget/ListView;Lcom/instabug/chat/ui/f/g$i;)V

    iput-object v0, p0, Lcom/instabug/chat/ui/f/d;->b:Lcom/instabug/chat/ui/f/g;

    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    sget p2, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 24
    sget p2, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/instabug/chat/R$id;->TAG_BTN_BACK:I

    const-string v0, "instabug_btn_back"

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/instabug/chat/R$id;->instabug_btn_attach:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-static {v0}, Lcom/instabug/library/util/Colorizer;->applyPrimaryColorTint(Landroid/widget/ImageView;)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sget v1, Lcom/instabug/chat/R$drawable;->ibg_core_ic_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sget v1, Lcom/instabug/chat/R$drawable;->ibg_core_ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/instabug/chat/R$id;->instabug_btn_toolbar_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/chat/R$integer;->instabug_icon_lang_rotation:I

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/instabug/library/core/ui/ToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/instabug/chat/ui/f/b;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/instabug/chat/R$id;->instabug_btn_send:I

    if-ne v0, v1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/instabug/chat/ui/f/d;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_1

    .line 7
    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/f/b;->d()Lcom/instabug/chat/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/instabug/chat/ui/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/instabug/chat/ui/f/b;->a(Lcom/instabug/chat/e/d;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/instabug/chat/ui/f/d;->c:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/instabug/chat/R$id;->instabug_btn_attach:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/util/SystemServiceUtils;->hideInputMethod(Landroid/app/Activity;)V

    .line 12
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/d;->u()V

    :cond_3
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
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/ToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/ToolbarFragment;->setRetainInstance(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chat_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/chat/ui/f/d;->a:Ljava/lang/String;

    .line 6
    :cond_0
    new-instance p1, Lcom/instabug/chat/ui/f/e;

    invoke-direct {p1, p0}, Lcom/instabug/chat/ui/f/e;-><init>(Lcom/instabug/chat/ui/f/c;)V

    iput-object p1, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/chat/ui/f/d;->c:Landroid/widget/EditText;

    .line 3
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/f/b;->c()V

    :cond_0
    return-void
.end method

.method protected onDoneButtonClicked()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p3

    const/16 v1, 0xa3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 12
    invoke-super {p0, p1, p2, p3}, Lcom/instabug/library/core/ui/ToolbarFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/d;->x()V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_3

    .line 15
    check-cast p1, Lcom/instabug/chat/ui/f/b;

    invoke-interface {p1}, Lcom/instabug/chat/ui/f/b;->i()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 26
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/d;->x()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/f/b;->h()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/a;

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v1, :cond_2

    .line 11
    check-cast v1, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v1, v0}, Lcom/instabug/chat/ui/f/b;->a(Lcom/instabug/chat/e/a;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    :cond_3
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
    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/f/b;->e()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/library/core/ui/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/instabug/chat/ui/f/b;

    iget-object p2, p0, Lcom/instabug/chat/ui/f/d;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/instabug/chat/ui/f/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/d;->b:Lcom/instabug/chat/ui/f/g;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/d;->t()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/core/ui/ToolbarFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/chat/g/a;->b()Lcom/instabug/chat/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/g/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/d;->w()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$string;->instabug_str_video_encoder_busy:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
