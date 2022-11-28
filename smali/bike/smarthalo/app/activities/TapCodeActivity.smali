.class public Lbike/smarthalo/app/activities/TapCodeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TapCodeActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private currentTapcode:Ljava/lang/String;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private tapCodeDisplay:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->currentTapcode:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/activities/TapCodeActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 65
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/TapCodeActivity;->setNewTap(Z)V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/activities/TapCodeActivity;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    .line 67
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/TapCodeActivity;->setNewTap(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$onFinish$2(Lbike/smarthalo/app/activities/TapCodeActivity;I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/TapCodeActivity;->finish()V

    const/4 v0, 0x0

    .line 118
    invoke-static {p1, v0, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    return-void
.end method

.method private setNewTap(Z)V
    .locals 4

    const/4 v0, 0x5

    .line 88
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 90
    iget-object v2, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->currentTapcode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->tapCodeDisplay:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->currentTapcode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v2, 0x7f08025e

    goto :goto_0

    :cond_1
    const v2, 0x7f08025d

    .line 95
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->currentTapcode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "S"

    goto :goto_1

    :cond_2
    const-string p1, "L"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->currentTapcode:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->currentTapcode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v0, :cond_3

    const p1, 0x7f110054

    const/16 v0, 0x2710

    .line 100
    invoke-static {p0, p1, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 101
    iget-object p1, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;

    iget-object v0, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->currentTapcode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;->setTapCode(Ljava/lang/String;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a051b
        0x7f0a051c
        0x7f0a051d
        0x7f0a051e
        0x7f0a051f
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002c

    .line 48
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/TapCodeActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Lbike/smarthalo/app/activities/TapCodeActivity;)V

    .line 51
    invoke-static {p0, p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;

    .line 53
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/TapCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f06001c

    invoke-static {p1, v1, v0}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const v1, 0x7f110050

    .line 54
    invoke-static {p0, v1, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;II)V

    .line 55
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    const/4 p1, 0x5

    .line 58
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const/4 v1, 0x0

    .line 59
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 60
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lbike/smarthalo/app/activities/TapCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0523

    .line 64
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/TapCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 65
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$TapCodeActivity$XHxFFS-0G4pBxGLENeMer6SXJCw;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$TapCodeActivity$XHxFFS-0G4pBxGLENeMer6SXJCw;-><init>(Lbike/smarthalo/app/activities/TapCodeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$TapCodeActivity$lejCa_3a0tkz8xgHtN3VjrsfVws;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$TapCodeActivity$lejCa_3a0tkz8xgHtN3VjrsfVws;-><init>(Lbike/smarthalo/app/activities/TapCodeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0a0522

    .line 71
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/TapCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->tapCodeDisplay:Landroid/widget/RelativeLayout;

    return-void

    :array_0
    .array-data 4
        0x7f0a051b
        0x7f0a051c
        0x7f0a051d
        0x7f0a051e
        0x7f0a051f
    .end array-data
.end method

.method public onFinish(ZI)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 108
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/TapCodeActivity;->setResult(I)V

    .line 112
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lbike/smarthalo/app/activities/TapCodeActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$TapCodeActivity$8yCNYk3vfwPf74oG5_P7vMYqYlg;

    invoke-direct {v0, p0, p2}, Lbike/smarthalo/app/activities/-$$Lambda$TapCodeActivity$8yCNYk3vfwPf74oG5_P7vMYqYlg;-><init>(Lbike/smarthalo/app/activities/TapCodeActivity;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 76
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "AlarmTapcode"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/activities/TapCodeActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;->onViewResumed()V

    return-void
.end method
