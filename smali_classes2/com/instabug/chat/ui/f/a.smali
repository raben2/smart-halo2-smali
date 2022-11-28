.class public Lcom/instabug/chat/ui/f/a;
.super Lcom/instabug/library/InstabugBaseFragment;
.source "AttachmentsBottomSheetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/library/FragmentVisibilityChangedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/ui/f/a$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/widget/AppCompatImageView;

.field private b:Landroidx/appcompat/widget/AppCompatImageView;

.field private c:Landroidx/appcompat/widget/AppCompatImageView;

.field d:Lcom/instabug/chat/ui/f/a$b;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/InstabugBaseFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/instabug/chat/ui/f/a$b;)Lcom/instabug/chat/ui/f/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/chat/ui/f/a;

    invoke-direct {v0}, Lcom/instabug/chat/ui/f/a;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/instabug/chat/ui/f/a;->d:Lcom/instabug/chat/ui/f/a$b;

    return-object v0
.end method

.method private a()V
    .locals 3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/ui/f/a;->a:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/instabug/chat/R$drawable;->ibg_core_ic_capture_screenshot:I

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/ResourcesUtils;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/chat/ui/f/a;->b:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/instabug/chat/R$drawable;->ibg_core_ic_record_video:I

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/ResourcesUtils;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/instabug/chat/ui/f/a;->c:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/instabug/chat/R$drawable;->ibg_core_ic_attach_gallery_media:I

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/ResourcesUtils;->getVectorDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeDark:Lcom/instabug/library/InstabugColorTheme;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/instabug/chat/R$color;->instabug_theme_tinting_color_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/instabug/chat/R$color;->instabug_theme_tinting_color_light:I

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/library/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/instabug/chat/ui/f/a;->c:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    iget-object v1, p0, Lcom/instabug/chat/ui/f/a;->b:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 22
    iget-object v1, p0, Lcom/instabug/chat/ui/f/a;->a:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to inflate view with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 26
    sget v0, Lcom/instabug/chat/R$id;->instabug_attach_gallery_image_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->ADD_IMAGE_FROM_GALLERY:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/library/R$string;->instabug_str_pick_media_from_gallery:I

    .line 28
    invoke-virtual {p0, v2}, Lcom/instabug/library/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    sget v0, Lcom/instabug/chat/R$id;->instabug_attach_screenshot_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->ADD_EXTRA_SCREENSHOT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/library/R$string;->instabug_str_take_screenshot:I

    .line 32
    invoke-virtual {p0, v2}, Lcom/instabug/library/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    sget v0, Lcom/instabug/chat/R$id;->instabug_attach_video_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->ADD_VIDEO:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/library/R$string;->instabug_str_record_video:I

    .line 35
    invoke-virtual {p0, v1}, Lcom/instabug/library/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 14
    invoke-virtual {p0}, Lcom/instabug/library/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/instabug/library/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 18
    invoke-virtual {p0}, Lcom/instabug/library/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "attachments_bottom_sheet_fragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    sget v0, Lcom/instabug/chat/R$id;->instabug_attachments_actions_bottom_sheet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    new-instance v0, Lcom/instabug/chat/ui/f/a$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/chat/ui/f/a$a;-><init>(Lcom/instabug/chat/ui/f/a;Landroid/view/View;)V

    iput-object v0, p0, Lcom/instabug/chat/ui/f/a;->e:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected consumeNewInstanceSavedArguments()V
    .locals 0

    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/chat/R$layout;->instabug_fragment_attachments_bottom_sheet:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$string;->instabug_str_empty:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 3
    sget v0, Lcom/instabug/chat/R$id;->instabug_attach_screenshot:I

    if-ne p1, v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/a;->b()V

    .line 5
    iget-object p1, p0, Lcom/instabug/chat/ui/f/a;->d:Lcom/instabug/chat/ui/f/a$b;

    invoke-interface {p1}, Lcom/instabug/chat/ui/f/a$b;->a()V

    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/instabug/chat/R$id;->instabug_attach_gallery_image:I

    if-ne p1, v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/a;->b()V

    .line 9
    iget-object p1, p0, Lcom/instabug/chat/ui/f/a;->d:Lcom/instabug/chat/ui/f/a$b;

    invoke-interface {p1}, Lcom/instabug/chat/ui/f/a$b;->b()V

    goto :goto_0

    .line 11
    :cond_1
    sget v0, Lcom/instabug/chat/R$id;->instabug_attach_video:I

    if-ne p1, v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/a;->b()V

    .line 13
    iget-object p1, p0, Lcom/instabug/chat/ui/f/a;->d:Lcom/instabug/chat/ui/f/a$b;

    invoke-interface {p1}, Lcom/instabug/chat/ui/f/a$b;->g()V

    goto :goto_0

    .line 15
    :cond_2
    sget v0, Lcom/instabug/chat/R$id;->instabug_attachments_bottom_sheet_dim_view:I

    if-ne p1, v0, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/a;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/chat/ui/f/a;->e:Ljava/lang/Runnable;

    .line 2
    invoke-super {p0}, Lcom/instabug/library/InstabugBaseFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/library/InstabugBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_screenshot_image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/a;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_video_image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/a;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_gallery_image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/a;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    invoke-static {}, Lcom/instabug/chat/settings/a;->a()Lcom/instabug/chat/settings/AttachmentTypesState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/chat/settings/AttachmentTypesState;->isScreenshotEnabled()Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 8
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_screenshot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 11
    :cond_0
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_screenshot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-static {}, Lcom/instabug/chat/settings/a;->a()Lcom/instabug/chat/settings/AttachmentTypesState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/chat/settings/AttachmentTypesState;->isImageFromGalleryEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_gallery_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 17
    :cond_1
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_gallery_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_1
    invoke-static {}, Lcom/instabug/chat/settings/a;->a()Lcom/instabug/chat/settings/AttachmentTypesState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/chat/settings/AttachmentTypesState;->isScreenRecordingEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 23
    :cond_2
    sget p2, Lcom/instabug/chat/R$id;->instabug_attach_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_2
    sget p2, Lcom/instabug/chat/R$id;->instabug_attachments_bottom_sheet_dim_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 26
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/a;->a(Landroid/view/View;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/f/a;->b(Landroid/view/View;)V

    .line 29
    invoke-direct {p0}, Lcom/instabug/chat/ui/f/a;->a()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is visible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected saveState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
