.class final Lcom/instabug/bug/view/reporting/f;
.super Ljava/lang/Object;
.source "ReportingNavigator.java"


# direct methods
.method static a(Landroid/media/projection/MediaProjectionManager;Lcom/instabug/bug/view/reporting/b;)V
    .locals 1
    .param p0    # Landroid/media/projection/MediaProjectionManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 16
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0xf32

    .line 17
    invoke-virtual {p1, p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 21
    invoke-virtual {p0, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method static a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/bug/view/g/a;)V
    .locals 3

    .line 9
    sget v0, Lcom/instabug/library/R$id;->instabug_fragment_container:I

    .line 11
    invoke-static {p1}, Lcom/instabug/bug/view/g/b;->a(Lcom/instabug/bug/view/g/a;)Lcom/instabug/bug/view/g/b;

    move-result-object p1

    const-string v1, "disclaimer_details"

    const/4 v2, 0x1

    .line 12
    invoke-static {p0, v0, p1, v1, v2}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method static a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    .line 26
    invoke-static {p1}, Lcom/instabug/bug/view/h/c;->a(Ljava/lang/String;)Lcom/instabug/bug/view/h/c;

    move-result-object p1

    const-string v1, "ExtraFieldsFragment"

    const/4 v2, 0x1

    .line 27
    invoke-static {p0, v0, p1, v1, v2}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method static a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 13
    sget v0, Lcom/instabug/library/R$id;->instabug_fragment_container:I

    .line 14
    invoke-static {p1, p2}, Lcom/instabug/bug/view/i/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instabug/bug/view/i/b/c;

    move-result-object p1

    const-string p2, "visual_user_step_preview"

    const/4 v1, 0x1

    .line 15
    invoke-static {p0, v0, p1, p2, v1}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method static a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    .line 3
    invoke-static {p1}, Lcom/instabug/bug/view/reporting/g/a;->g(Ljava/lang/String;)Lcom/instabug/bug/view/reporting/g/a;

    move-result-object p1

    sget-object v1, Lcom/instabug/bug/view/reporting/g/a;->A:Ljava/lang/String;

    .line 4
    invoke-static {p0, v0, p1, v1, p2}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method static a(Landroidx/fragment/app/FragmentManager;Z)V
    .locals 3

    .line 5
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    .line 7
    invoke-static {}, Lcom/instabug/bug/view/g/c;->e()Lcom/instabug/bug/view/g/c;

    move-result-object v1

    const-string v2, "disclaimer"

    .line 8
    invoke-static {p0, v0, v1, v2, p1}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method static a(Lcom/instabug/bug/view/reporting/b;Ljava/lang/String;)V
    .locals 3

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "*/*"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const-string v1, "image/*"

    const-string v2, "video/*"

    .line 36
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :cond_1
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xf16

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method static b(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 3

    .line 5
    sget v0, Lcom/instabug/library/R$id;->instabug_fragment_container:I

    .line 7
    invoke-static {p1}, Lcom/instabug/bug/view/i/c/f;->a(Ljava/lang/String;)Lcom/instabug/bug/view/i/c/f;

    move-result-object p1

    const-string v1, "visual_user_steps"

    const/4 v2, 0x1

    .line 8
    invoke-static {p0, v0, p1, v1, v2}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method static b(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    .line 3
    invoke-static {p1}, Lcom/instabug/bug/view/reporting/h/a;->g(Ljava/lang/String;)Lcom/instabug/bug/view/reporting/h/a;

    move-result-object p1

    sget-object v1, Lcom/instabug/bug/view/reporting/h/a;->A:Ljava/lang/String;

    .line 4
    invoke-static {p0, v0, p1, v1, p2}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method static c(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    .line 3
    invoke-static {p1}, Lcom/instabug/bug/view/reporting/i/a;->g(Ljava/lang/String;)Lcom/instabug/bug/view/reporting/i/a;

    move-result-object p1

    sget-object v1, Lcom/instabug/bug/view/reporting/i/a;->A:Ljava/lang/String;

    .line 4
    invoke-static {p0, v0, p1, v1, p2}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method
