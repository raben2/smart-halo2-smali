.class public Lcom/instabug/library/screenshot/ExtraScreenshotHelper;
.super Ljava/lang/Object;
.source "ExtraScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ExtraScreenshotHelper"


# instance fields
.field private captureButton:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isCaptureButtonShown:Z

.field private onCaptureListener:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->isCaptureButtonShown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->hide()V

    return-void
.end method

.method static synthetic access$100(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->onCaptureListener:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureExtraScreenshot(Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->reset()V

    return-void
.end method

.method static synthetic access$400(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->handleCurrentActivityResumeEvent()V

    return-void
.end method

.method static synthetic access$500(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->handleCurrentActivityPauseEvent()V

    return-void
.end method

.method private captureExtraScreenshot(Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V
    .locals 2
    .param p2    # Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->isUsingMediaProjection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/instabug/library/screenshot/b;->c:Lcom/instabug/library/screenshot/b;

    new-instance v1, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$b;-><init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/screenshot/b;->a(Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$c;-><init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V

    invoke-static {p1, v0}, Lcom/instabug/library/screenshot/ScreenshotProvider;->a(Landroid/app/Activity;Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    :goto_0
    return-void
.end method

.method private createCaptureButton(Landroid/app/Activity;)Landroid/widget/ImageButton;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/instabug/library/R$id;->instabug_extra_screenshot_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    sget v1, Lcom/instabug/library/R$drawable;->ibg_core_bg_white_oval:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    sget v2, Lcom/instabug/library/R$drawable;->ibg_core_ic_screenshot:I

    invoke-static {p1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v1}, Lcom/instabug/library/util/Colorizer;->getPrimaryColorTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method private createCaptureButtonContainer(Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x51

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 4
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 8
    invoke-static {p1}, Lcom/instabug/library/util/ScreenUtility;->hasNavBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/instabug/library/util/ScreenUtility;->isLandscape(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {v1}, Lcom/instabug/library/util/ScreenUtility;->getNavigationBarHeight(Landroid/content/res/Resources;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-object v0
.end method

.method private handleCurrentActivityPauseEvent()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->hide()V

    return-void
.end method

.method private handleCurrentActivityResumeEvent()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "ExtraScreenshotHelper"

    const-string v1, "current activity equal null"

    .line 5
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hide()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->isCaptureButtonShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->isCaptureButtonShown:Z

    :cond_0
    return-void
.end method

.method private isUsingMediaProjection()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isScreenshotByMediaProjectionEnabled()Z

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->hide()V

    .line 2
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private show(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->isCaptureButtonShown:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isProcessingForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->createCaptureButton(Landroid/app/Activity;)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->createCaptureButtonContainer(Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->isCaptureButtonShown:Z

    .line 13
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$a;-><init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private subscribeToCurranActivityLifeCycle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$d;

    invoke-direct {v1, p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$d;-><init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->onCaptureListener:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->subscribeToCurranActivityLifeCycle()V

    .line 3
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/invocation/InvocationManager;->switchOffInvocation()V

    .line 4
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/instabug/library/PresentationManager;->setInInstabugContext(Z)V

    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->captureButton:Landroid/widget/ImageButton;

    .line 5
    iput-object v1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->onCaptureListener:Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;

    .line 6
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 10
    :cond_1
    iput-object v1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

    .line 11
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/PresentationManager;->setInInstabugContext(Z)V

    .line 12
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->switchOnInvocation()V

    return-void
.end method
