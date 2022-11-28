.class public Lcom/instabug/bug/view/reporting/ReportingContainerActivity;
.super Lcom/instabug/library/core/ui/BaseToolbarActivity;
.source "ReportingContainerActivity.java"

# interfaces
.implements Lcom/instabug/library/_InstabugActivity;
.implements Lcom/instabug/bug/view/d;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/bug/view/f/c$a;
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/instabug/bug/view/g/c$b;
.implements Lcom/instabug/bug/view/reporting/b$s;
.implements Lcom/instabug/bug/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BaseToolbarActivity<",
        "Lcom/instabug/bug/view/reporting/a;",
        ">;",
        "Lcom/instabug/library/_InstabugActivity;",
        "Lcom/instabug/bug/view/d;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/bug/view/f/c$a;",
        "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
        "Lcom/instabug/bug/view/g/c$b;",
        "Lcom/instabug/bug/view/reporting/b$s;",
        "Lcom/instabug/bug/view/b;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a:Z

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_DISCARD_DIALOG_NEGATIVE_ACTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/bug/R$string;->instabug_str_bugreport_dismiss_cancel:I

    invoke-static {p0, v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private B()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_DISCARD_DIALOG_POSITIVE_ACTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/bug/R$string;->instabug_str_bugreport_dismiss_discard:I

    invoke-static {p0, v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_DISCARD_DIALOG_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/bug/R$string;->instabug_str_bugreport_dismiss_warning_title:I

    invoke-static {p0, v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private D()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPRO_STEPS_LIST_HEADER:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/bug/R$string;->IBGReproStepsListTitle:I

    invoke-static {p0, v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private E()V
    .locals 2

    .line 1
    sget v0, Lcom/instabug/library/R$id;->instabug_fragment_container:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;Z)V

    return-void
.end method

.method private F()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method private G()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->C()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->z()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->B()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->A()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/instabug/bug/view/reporting/ReportingContainerActivity$c;

    invoke-direct {v5, p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity$c;-><init>(Lcom/instabug/bug/view/reporting/ReportingContainerActivity;)V

    const/4 v6, 0x0

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(ZI)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/library/FragmentVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/instabug/library/FragmentVisibilityChangedListener;

    invoke-interface {p2, p1}, Lcom/instabug/library/FragmentVisibilityChangedListener;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method private b(Lcom/instabug/bug/view/g/a;)V
    .locals 2

    .line 6
    sget v0, Lcom/instabug/library/R$id;->instabug_fragment_container:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/bug/view/g/a;)V

    return-void
.end method

.method private z()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_DISCARD_DIALOG_BODY:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/bug/R$string;->instabug_str_bugreport_dismiss_warning_message:I

    invoke-static {p0, v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(FF)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screenshot_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a:Z

    .line 29
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x106000b

    .line 31
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 32
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "screenshot_uri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/instabug/bug/view/reporting/ReportingContainerActivity$b;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity$b;-><init>(Lcom/instabug/bug/view/reporting/ReportingContainerActivity;FFLandroid/widget/ImageView;)V

    invoke-static {v0, v1, v2}, Lcom/instabug/library/util/BitmapUtils;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Lcom/instabug/library/util/BitmapWorkerTask$OnImageLoadedListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "screenshot_uri"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ReportingContainerActivity"

    const-string v1, "onImageEditingDone"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/bug/view/reporting/ReportingContainerActivity$a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity$a;-><init>(Lcom/instabug/bug/view/reporting/ReportingContainerActivity;)V

    invoke-static {p1, p2, p0, v0}, Lcom/instabug/library/util/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/content/Context;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    .line 16
    :cond_0
    sget p1, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 18
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->F()V

    .line 20
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object p2, Lcom/instabug/bug/view/reporting/i/a;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "ReportingContainerActivity"

    const-string p2, "Instabug Feedback fragment equal null"

    .line 21
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_1

    .line 23
    check-cast p1, Lcom/instabug/bug/view/reporting/a;

    invoke-virtual {p1}, Lcom/instabug/bug/view/reporting/a;->m()V

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/bug/view/g/a;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->b(Lcom/instabug/bug/view/g/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 66
    sget v0, Lcom/instabug/library/R$id;->instabug_fragment_container:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 69
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 70
    invoke-static {v0, p1, p2}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/instabug/bug/R$id;->instabug_pbi_footer:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget p1, Lcom/instabug/bug/R$id;->instabug_pbi_footer:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getViewContext()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    sget v1, Lcom/instabug/bug/R$attr;->ibg_bug_color_bg_pbi:I

    invoke-static {v0, v1}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    sget p1, Lcom/instabug/library/R$id;->image_instabug_logo:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getViewContext()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    sget v1, Lcom/instabug/bug/R$attr;->instabug_foreground_color:I

    invoke-static {v0, v1}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    sget v0, Lcom/instabug/library/R$drawable;->ibg_core_ic_instabug_logo:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/instabug/bug/R$drawable;->ibg_core_ic_close:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/instabug/bug/view/reporting/f;->c(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/bug/R$layout;->ibg_bug_activity_bug_reporting:I

    return v0
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "DEFAULT_IN_MEMORY_CACHE_KEY"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "video.path"

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/Cache;->delete(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->finish()V

    return-void
.end method

.method protected initContentViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/instabug/bug/R$color;->instabug_attachment_bar_color_dark:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public k()V
    .locals 3

    const-string v0, "ReportingContainerActivity"

    const-string v1, "startWithHangingBug"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bug attachment size): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportingContainerActivity"

    .line 5
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/bug/c;->a(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/instabug/bug/view/reporting/i/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 11
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_1

    .line 12
    check-cast v0, Lcom/instabug/bug/view/reporting/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/reporting/a;->m()V

    .line 15
    :cond_1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/bug/c;->c(Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_2

    .line 18
    check-cast v0, Lcom/instabug/bug/view/reporting/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/reporting/a;->l()V

    :cond_2
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ReportingContainerActivity"

    const-string v1, "startBugReporter failed the live bug has been released"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    const-string v1, "bug"

    invoke-virtual {v0, v1}, Lcom/instabug/bug/model/a;->e(Ljava/lang/String;)Lcom/instabug/bug/model/a;

    .line 8
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v1, v0, v2}, Lcom/instabug/bug/model/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/bug/model/a;

    .line 15
    :cond_1
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 16
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v0, v2, v1}, Lcom/instabug/bug/view/reporting/f;->b(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V

    .line 21
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_2

    .line 22
    check-cast v0, Lcom/instabug/bug/view/reporting/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/reporting/a;->l()V

    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v1, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->overridePendingTransition(II)V

    .line 3
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->onBackPressed()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/KeyboardUtils;->hide(Landroid/app/Activity;)V

    .line 6
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->G()V

    :goto_0
    return-void
.end method

.method public onBackStackChanged()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Back stack changed, back stack size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportingContainerActivity"

    .line 3
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dark space clicked, fragments size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fragments are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReportingContainerActivity"

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->overridePendingTransition(II)V

    .line 4
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ReportingContainerActivity"

    const-string v0, "Bug is null, closing reporting activity and back to launch the app"

    .line 5
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->finishActivity()V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/StatusBarUtils;->darkenStatusBarColor(Landroid/app/Activity;I)V

    .line 12
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/l/a;->a(Lcom/instabug/library/InstabugColorTheme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->setTheme(I)V

    .line 14
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 16
    new-instance v0, Lcom/instabug/bug/view/reporting/a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/a;-><init>(Lcom/instabug/bug/view/d;)V

    iput-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 17
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.instabug.library.process"

    const/16 v2, 0xa2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/bug/view/reporting/a;

    invoke-virtual {p1, v0}, Lcom/instabug/bug/view/reporting/a;->a(I)V

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->b()Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    move-result-object v0

    sget-object v1, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->ADD_ATTACHMENT:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    sget-object v1, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->CANCEL:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    invoke-virtual {v0, v1}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;)V

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/OrientationUtils;->unlockOrientation(Landroid/content/Context;)V

    .line 6
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    new-instance v0, Lcom/instabug/bug/view/reporting/a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/a;-><init>(Lcom/instabug/bug/view/d;)V

    iput-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/view/g/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->E()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/view/i/a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->r()V

    goto :goto_0

    :cond_1
    const-string v0, "com.instabug.library.process"

    const/16 v1, 0xa2

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 9
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/bug/view/reporting/a;

    invoke-virtual {v0, p1}, Lcom/instabug/bug/view/reporting/a;->a(I)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->onStart()V

    .line 2
    const-class v0, Lcom/instabug/bug/BugPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/BugPlugin;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_0
    const-string v0, "ReportingContainerActivity"

    const-string v1, "onStart(),  SDK Invoking State Changed: true"

    .line 6
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    const-class v0, Lcom/instabug/bug/BugPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/BugPlugin;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/Plugin;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_0
    const-string v0, "ReportingContainerActivity"

    const-string v1, "onPause(),  SDK Invoking State Changed: false"

    .line 5
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->onStop()V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    sget v0, Lcom/instabug/library/R$id;->instabug_fragment_container:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->D()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/instabug/bug/view/reporting/f;->b(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/LocaleUtils;->isRTL(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/instabug/bug/R$drawable;->ibg_core_ic_back:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v0, v2}, Lcom/instabug/library/util/DrawableUtils;->getRotateDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/instabug/bug/R$drawable;->ibg_core_ic_back:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/instabug/bug/view/reporting/f;->b(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V

    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V

    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ReportingContainerActivity"

    const-string v1, "startFeedbackSender failed the live bug has been released"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    const-string v1, "feedback"

    invoke-virtual {v0, v1}, Lcom/instabug/bug/model/a;->e(Ljava/lang/String;)Lcom/instabug/bug/model/a;

    .line 8
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v1, v0, v2}, Lcom/instabug/bug/model/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/bug/model/a;

    .line 16
    :cond_1
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    .line 18
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v0, v2, v1}, Lcom/instabug/bug/view/reporting/f;->c(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V

    .line 22
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_2

    .line 23
    check-cast v0, Lcom/instabug/bug/view/reporting/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/reporting/a;->l()V

    :cond_2
    return-void
.end method

.method y()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    sget-object v1, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->CANCEL:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    invoke-virtual {v0, v1}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;)V

    const-string v0, "Reporting bug canceled. Deleting attachments"

    .line 5
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    const-string v1, "DEFAULT_IN_MEMORY_CACHE_KEY"

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "video.path"

    .line 9
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/Cache;->delete(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    invoke-static {}, Lcom/instabug/bug/b;->c()V

    .line 13
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->finish()V

    .line 15
    :cond_1
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->TAKING_SCREENSHOT_FOR_CHAT:Lcom/instabug/library/InstabugState;

    if-eq v0, v1, :cond_2

    .line 16
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->IMPORTING_IMAGE_FROM_GALLERY_FOR_CHAT:Lcom/instabug/library/InstabugState;

    if-ne v0, v1, :cond_3

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/bug/view/f/c;

    if-eqz v0, :cond_3

    .line 18
    sget-object v0, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    .line 21
    :cond_3
    sget v0, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(ZI)V

    return-void
.end method
